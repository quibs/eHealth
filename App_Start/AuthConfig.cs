using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Membership.OpenAuth;

namespace eHealth
{
    internal static class AuthConfig
    {
        public static void RegisterOpenAuth()
        {
            // See http://go.microsoft.com/fwlink/?LinkId=252803 for details on setting up this ASP.NET
            // application to support logging in via external services.

            OpenAuth.AuthenticationClients.AddTwitter(
                consumerKey: "3GDctggoyC8aRbhtmnVYGQWHN",
                consumerSecret: "FZ9cKyvbYN3YJrIDM1gwYLHutHPuUxJwZRfMmQNybeuQVEf6Tz");

            //OpenAuth.AuthenticationClients.AddFacebook(
            //    appId: "your Facebook app id",
            //    appSecret: "your Facebook app secret");

            //OpenAuth.AuthenticationClients.AddMicrosoft(
            //    clientId: "your Microsoft account client id",
            //    clientSecret: "your Microsoft account client secret");

            OpenAuth.AuthenticationClients.AddGoogle();
        }
    }
}