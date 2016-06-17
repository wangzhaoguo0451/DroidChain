.class public final Lcgk;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.unicomCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcgk;->a:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "device"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "selectsrv"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exit"

    aput-object v2, v0, v1

    sput-object v0, Lcgk;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcgk;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcgk;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Lcgk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "filetype"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "content"

    invoke-static {v1}, Lcgk;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcgk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcgj;->a()Lcgj;

    const-string v3, "http://unilog.wostore.cn:8061/logserver/getlog/paymentLog"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    new-instance v4, Lcgi;

    invoke-direct {v4, v3, v2, v1}, Lcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcgi;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcgl;

    invoke-direct {v2}, Lcgl;-><init>()V

    const-string v1, "logtype"

    const-string v3, "pay"

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imsi"

    invoke-static {p0}, Lcha;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcgz;->b()Lcom/unipay/beans/GameBaseBean;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "appid"

    invoke-static {}, Lcgz;->b()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "game"

    invoke-static {}, Lcgz;->b()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getGame()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpid"

    invoke-static {}, Lcgz;->b()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getPrmCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpcode"

    invoke-static {}, Lcgz;->b()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getCpid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "userid"

    invoke-static {}, Lcgz;->b()Lcom/unipay/beans/GameBaseBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/GameBaseBean;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcgz;->c()Lcom/unipay/beans/PayValueBean;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "vaccode"

    invoke-static {}, Lcgz;->c()Lcom/unipay/beans/PayValueBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getVacCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "customcode"

    invoke-static {}, Lcgz;->c()Lcom/unipay/beans/PayValueBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getCustomCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orderid"

    invoke-static {}, Lcgz;->c()Lcom/unipay/beans/PayValueBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getOrderid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {}, Lcgz;->c()Lcom/unipay/beans/PayValueBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipay/beans/PayValueBean;->getMoney()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v1, "datetime"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "payway"

    invoke-static {}, Lcgz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v2, v0, p1}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "errcode"

    invoke-virtual {v2, v0, p2}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkversion"

    sget-object v1, Lcom/unipay/tools/MyApplication;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isshowpage"

    invoke-virtual {v2, v0, p3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ua"

    invoke-static {}, Lcgz;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcgv;->a(Landroid/content/Context;)Lcgv;

    move-result-object v0

    iget-object v3, v0, Lcgv;->b:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    invoke-virtual {v0}, Lcgw;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    const-string v1, "appid"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "game"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpid"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cpcode"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "userid"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "vaccode"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "customcode"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orderid"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "software"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcgj;->a()Lcgj;

    const-string v0, "http://unilog.wostore.cn:8061/logserver/getlog/paymentLog"

    invoke-virtual {v2}, Lcgl;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pay"

    :try_start_0
    new-instance v3, Lcgm;

    invoke-direct {v3, v2, v0, v1}, Lcgm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcgm;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-static {v1, v2}, Lcgk;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcgk;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcgk;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcgk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcgk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v0, ""

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method
