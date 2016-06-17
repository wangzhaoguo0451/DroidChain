.class public final Lfqu;
.super Lhhl;
.source "FeedbackActivity.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/feedback/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/feedback/FeedbackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lfqu;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lfqu;->a:Lcom/wandoujia/p4/feedback/FeedbackActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/feedback/FeedbackActivity;->onBackPressed()V

    .line 161
    const/4 v0, 0x0

    return v0
.end method
