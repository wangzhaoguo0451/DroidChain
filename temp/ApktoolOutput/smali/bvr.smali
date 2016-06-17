.class public final Lbvr;
.super Ljava/lang/Object;
.source "LoadingBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/sina/weibo/sdk/component/view/LoadingBar;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/component/view/LoadingBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbvr;->a:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lbvr;->a:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Lcom/sina/weibo/sdk/component/view/LoadingBar;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Lcom/sina/weibo/sdk/component/view/LoadingBar;I)V

    .line 65
    iget-object v0, p0, Lbvr;->a:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    iget-object v1, p0, Lbvr;->a:Lcom/sina/weibo/sdk/component/view/LoadingBar;

    invoke-static {v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(Lcom/sina/weibo/sdk/component/view/LoadingBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/LoadingBar;->a(I)V

    .line 66
    return-void
.end method
