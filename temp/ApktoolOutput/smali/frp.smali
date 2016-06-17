.class public final Lfrp;
.super Lhhl;
.source "FeedbackListActivity.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lfrp;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lfrp;->a:Lcom/wandoujia/p4/feedback/FeedbackListActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/FeedbackListActivity;->onBackPressed()V

    .line 90
    const/4 v0, 0x0

    return v0
.end method
