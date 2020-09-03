using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(lab13.Startup))]
namespace lab13
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
