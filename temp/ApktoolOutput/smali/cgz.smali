.class public final Lcgz;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Lcom/unipay/beans/GameBaseBean;

.field private static j:Lcom/unipay/beans/PayValueBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://client.wostore.cn:6106/appstore_agent/blacklistSDK?"

    sput-object v0, Lcgz;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    sput-object v0, Lcgz;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcgz;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcgz;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcgz;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcgz;->f:Ljava/lang/String;

    const-string v0, "00000000000"

    sput-object v0, Lcgz;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcgz;->h:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcgz;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/unipay/beans/GameBaseBean;)V
    .locals 0

    sput-object p0, Lcgz;->i:Lcom/unipay/beans/GameBaseBean;

    return-void
.end method

.method public static a(Lcom/unipay/beans/PayValueBean;)V
    .locals 0

    sput-object p0, Lcgz;->j:Lcom/unipay/beans/PayValueBean;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcgz;->h:Ljava/lang/String;

    return-void
.end method

.method public static b()Lcom/unipay/beans/GameBaseBean;
    .locals 1

    sget-object v0, Lcgz;->i:Lcom/unipay/beans/GameBaseBean;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcgz;->f:Ljava/lang/String;

    return-void
.end method

.method public static c()Lcom/unipay/beans/PayValueBean;
    .locals 1

    sget-object v0, Lcgz;->j:Lcom/unipay/beans/PayValueBean;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcgz;->b:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcgz;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcgz;->e:Ljava/lang/String;

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcgz;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static f()V
    .locals 0

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcgz;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcgz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcgz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcgz;->e:Ljava/lang/String;

    return-object v0
.end method
