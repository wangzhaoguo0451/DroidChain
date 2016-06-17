.class public final Lfro;
.super Ljava/lang/Object;
.source "FeedbackListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lfro;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lfro;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    const-class v2, Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    iget-object v1, p0, Lfro;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    iget-object v0, p0, Lfro;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->finish()V

    .line 67
    return-void
.end method
