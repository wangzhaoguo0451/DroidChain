.class public final Lecd;
.super Ljava/lang/Object;
.source "CommonViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/views/CommonViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lecd;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lecd;->a:Lcom/wandoujia/launcher/launcher/views/CommonViewPager;

    invoke-virtual {v0}, Lcom/wandoujia/launcher/launcher/views/CommonViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld;->q(Landroid/content/Context;)V

    .line 77
    return-void
.end method
