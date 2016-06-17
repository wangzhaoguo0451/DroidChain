.class public final Ldcf;
.super Lhhl;
.source "BaseToolBarActivity.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Ldcf;->a:Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Ldcf;->a:Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onBackPressed()V

    .line 56
    const/4 v0, 0x0

    return v0
.end method
