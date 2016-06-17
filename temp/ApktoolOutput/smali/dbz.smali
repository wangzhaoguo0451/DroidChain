.class public final Ldbz;
.super Ljava/lang/Object;
.source "JupiterApplication.java"

# interfaces
.implements Lakq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->f()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wandoujia/base/utils/LibraryLoaderHelper;->loadLibrarySafety(Landroid/content/Context;Ljava/lang/String;)Z

    .line 204
    return-void
.end method
