.class public final Leof;
.super Ljava/lang/Object;
.source "LogViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/logv3/toolkit/LogViewPager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/toolkit/LogViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Leof;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    iget-object v1, p0, Leof;->a:Lcom/wandoujia/logv3/toolkit/LogViewPager;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/toolkit/LogViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Leny;->a(Landroid/content/Context;)V

    .line 91
    return-void
.end method
