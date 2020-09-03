using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebAppICallback.Startup))]
namespace WebAppICallback
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
