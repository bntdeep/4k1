using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.IO.Compression;
using System.Xml.Serialization;

namespace ZipArchiveRead
{
    class Program
    {
        static void Main(string[] args)
        {
            string myXml = GetXmlStringFromZipArchive(@"d:\archive\fromArchiveDocument.zip", "word/document.xml");
            Console.WriteLine(myXml);
            AppendFileToArchive(@"d:\archive\fromArchiveDocument.zip", "word/document.xml");
        }

        private static string GetXmlStringFromZipArchive(string archivePath, string filePath)
        {
            using (ZipArchive archive = ZipFile.OpenRead(archivePath))
            {
                ZipArchiveEntry document = archive.GetEntry(filePath);

                if (document != null)
                {
                    using (var stream = document.Open())
                    {
                        using (var reader = new StreamReader(stream))
                        {
                            return reader.ReadToEnd();
                        }
                    }
                }
                return null;
            }
        }

        public static void AppendFileToArchive(string archivePath, string filePath)
        {
            using (FileStream zipToOpen = new FileStream(archivePath, FileMode.Open))

            using (ZipArchive archive = new ZipArchive(zipToOpen, ZipArchiveMode.Update))
            {
                ZipArchiveEntry updatingEntry = archive.CreateEntry("word/document.xml");
                using (StreamWriter writer = new StreamWriter(updatingEntry.Open()))
                {
                    writer.Write("hello from c#");
                    writer.Write("==============================");
                }
            }


        }
    }
}

