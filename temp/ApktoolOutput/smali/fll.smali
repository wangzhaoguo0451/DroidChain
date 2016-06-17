.class final Lfll;
.super Ljava/lang/Object;
.source "AbsCommunityPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Z

.field private synthetic c:Lflh;


# direct methods
.method constructor <init>(Lflh;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lfll;->c:Lflh;

    iput-boolean p2, p0, Lfll;->a:Z

    iput-boolean p3, p0, Lfll;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 211
    iget-boolean v0, p0, Lfll;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfll;->c:Lflh;

    iget-object v0, v0, Lflh;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lfll;->c:Lflh;

    iget-object v0, v0, Lflh;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 213
    iget-object v0, p0, Lfll;->c:Lflh;

    const/4 v1, 0x0

    iput-object v1, v0, Lflh;->d:Landroid/app/ProgressDialog;

    .line 215
    :cond_0
    iget-boolean v0, p0, Lfll;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfll;->c:Lflh;

    iget-object v0, v0, Lflh;->e:Lflm;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lfll;->c:Lflh;

    iget-object v0, v0, Lflh;->a:Landroid/app/Activity;

    iget-object v1, p0, Lfll;->c:Lflh;

    iget v1, v1, Lflh;->b:I

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 217
    iget-object v0, p0, Lfll;->c:Lflh;

    iget-object v0, v0, Lflh;->e:Lflm;

    invoke-interface {v0}, Lflm;->b()V

    .line 219
    :cond_1
    return-void
.end method
