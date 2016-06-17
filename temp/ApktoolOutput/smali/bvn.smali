.class public final Lbvn;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbvn;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lbvn;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;)V

    .line 105
    return-void
.end method
