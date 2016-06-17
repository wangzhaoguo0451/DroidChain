.class public final Lbvq;
.super Ljava/lang/Object;
.source "CommentComponentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/sina/weibo/sdk/component/view/CommentComponentView;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/component/view/CommentComponentView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbvq;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lbvq;->a:Lcom/sina/weibo/sdk/component/view/CommentComponentView;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/CommentComponentView;->a(Lcom/sina/weibo/sdk/component/view/CommentComponentView;)V

    .line 86
    return-void
.end method
