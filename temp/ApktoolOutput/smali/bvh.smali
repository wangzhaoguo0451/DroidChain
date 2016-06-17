.class public final Lbvh;
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
    iput-object p1, p0, Lbvh;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lbvh;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->e(Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;)Lbvb;

    move-result-object v0

    iget-object v1, p0, Lbvh;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    .line 217
    invoke-virtual {v0, v1}, Lbvb;->a(Landroid/app/Activity;)V

    .line 218
    iget-object v0, p0, Lbvh;->a:Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->finish()V

    .line 219
    return-void
.end method
