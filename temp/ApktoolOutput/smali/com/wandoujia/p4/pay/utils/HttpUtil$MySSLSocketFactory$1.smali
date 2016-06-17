.class Lcom/wandoujia/p4/pay/utils/HttpUtil$MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/utils/HttpUtil$MySSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/utils/HttpUtil$MySSLSocketFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/wandoujia/p4/pay/utils/HttpUtil$MySSLSocketFactory$1;->this$0:Lcom/wandoujia/p4/pay/utils/HttpUtil$MySSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 245
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method
