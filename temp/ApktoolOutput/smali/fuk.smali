.class public final Lfuk;
.super Ljava/lang/Object;
.source "ViewAllGiftAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->a(Landroid/content/Context;)V

    .line 16
    return-void
.end method
