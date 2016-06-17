.class public final Lgdr;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lgdr;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lgdr;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lgdr;->a:Landroid/content/Context;

    const v1, 0x7f0e047f

    sget v2, Ldxa;->a:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 181
    :cond_0
    return-void
.end method
