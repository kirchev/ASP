using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SQLQuery
/// </summary>
public class SQLQuery
{
    public const string NewsInserts = "Insert into news (Title, Author, Content, CreateDate, Image) VALUES(@Title, @Author, @Content, @CreateDate, @Image)";
    public const string InsertActivationCode = "INSERT INTO UserActivationCode VALUES(@UserId, @ActivationCode)";
}