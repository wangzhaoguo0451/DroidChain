.class public final Lbvg;
.super Ljava/lang/Object;
.source "WeiboSdkBrowser.java"

# interfaces
.implements Lbvx;


# instance fields
.field private synthetic a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

.field private final synthetic b:Lbvc;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Lbvc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbvg;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    iput-object p2, p0, Lbvg;->b:Lbvc;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 3
    .parameter

    .prologue
    .line 170
    invoke-static {}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "post onWeiboException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v0, p0, Lbvg;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lbvc;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lbvg;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 173
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 176
    invoke-static {}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c()Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lbvd;->a(Ljava/lang/String;)Lbvd;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    iget v1, v0, Lbvd;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 180
    iget-object v1, v0, Lbvd;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    iget-object v1, p0, Lbvg;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    iget-object v2, p0, Lbvg;->b:Lbvc;

    iget-object v0, v0, Lbvd;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lbvc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lbvg;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    const-string v1, "upload pic faild"

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lbvc;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 184
    iget-object v0, p0, Lbvg;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    goto :goto_0
.end method
