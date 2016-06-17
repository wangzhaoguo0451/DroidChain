.class public final Lfra;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/feedback/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lfra;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lfra;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lfra;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    const-class v3, Lcom/wandoujia/p4/netcheck/NetCheckActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    .line 458
    return-void
.end method
