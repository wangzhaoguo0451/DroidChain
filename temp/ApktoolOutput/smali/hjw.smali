.class public final Lhjw;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lt;


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lhjw;->a:Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lhjw;->a:Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->e()I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lhjw;->a:Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/ripple/activity/DetailActivity;->finish()V

    .line 62
    :cond_0
    return-void
.end method
