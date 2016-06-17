.class public final Lgdt;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:I

.field private synthetic c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lgdt;->a:Landroid/content/Context;

    iput p2, p0, Lgdt;->b:I

    iput p3, p0, Lgdt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lgdt;->a:Landroid/content/Context;

    iget-object v1, p0, Lgdt;->a:Landroid/content/Context;

    iget v2, p0, Lgdt;->b:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lgdt;->c:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 203
    return-void
.end method
