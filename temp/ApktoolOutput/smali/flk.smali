.class final Lflk;
.super Ljava/lang/Object;
.source "AbsCommunityPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lflh;


# direct methods
.method constructor <init>(Lflh;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lflk;->b:Lflh;

    iput-object p2, p0, Lflk;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lflk;->b:Lflh;

    iget-object v0, v0, Lflh;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lflk;->b:Lflh;

    iget-object v0, v0, Lflh;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 176
    iget-object v0, p0, Lflk;->b:Lflh;

    const/4 v1, 0x0

    iput-object v1, v0, Lflh;->d:Landroid/app/ProgressDialog;

    .line 179
    :cond_0
    iget-object v0, p0, Lflk;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lflk;->b:Lflh;

    iget-object v0, v0, Lflh;->a:Landroid/app/Activity;

    iget-object v1, p0, Lflk;->b:Lflh;

    iget v1, v1, Lflh;->c:I

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 184
    :goto_0
    iget-object v0, p0, Lflk;->b:Lflh;

    iget-object v0, v0, Lflh;->e:Lflm;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lflk;->b:Lflh;

    iget-object v0, v0, Lflh;->e:Lflm;

    invoke-interface {v0}, Lflm;->a()V

    .line 187
    :cond_1
    return-void

    .line 182
    :cond_2
    iget-object v0, p0, Lflk;->b:Lflh;

    iget-object v0, v0, Lflh;->a:Landroid/app/Activity;

    iget-object v1, p0, Lflk;->a:Ljava/lang/String;

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0
.end method
