.class public final Lbvi;
.super Ljava/lang/Object;
.source "WeiboSdkBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbvi;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lbvi;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    iget-object v1, p0, Lbvi;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->c(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->b(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lbvi;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->f(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)V

    .line 373
    return-void
.end method
