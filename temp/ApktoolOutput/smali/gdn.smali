.class public final Lgdn;
.super Ljava/lang/Object;
.source "ShortcutUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-boolean p1, p0, Lgdn;->a:Z

    iput-object p2, p0, Lgdn;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 271
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lgdn;->a:Z

    if-nez v0, :cond_1

    .line 272
    :cond_0
    iget-object v0, p0, Lgdn;->b:Landroid/content/Context;

    iget-object v1, p0, Lgdn;->b:Landroid/content/Context;

    const v2, 0x7f0e0141

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/utils/ShortcutUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->z()V

    .line 276
    :cond_1
    return-void
.end method
