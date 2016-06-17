.class public final Lexm;
.super Ljava/lang/Object;
.source "InstallConnApkDialog.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lhoq;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexm;->c:Z

    .line 24
    iput-object p1, p0, Lexm;->a:Landroid/content/Context;

    .line 25
    iput-boolean p2, p0, Lexm;->c:Z

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lhoq;

    iget-object v1, p0, Lexm;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lhoq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexm;->b:Lhoq;

    .line 31
    iget-object v1, p0, Lexm;->b:Lhoq;

    iget-boolean v0, p0, Lexm;->c:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e0278

    :goto_0
    invoke-virtual {v1, v0}, Lhoq;->a(I)Lhoq;

    .line 33
    iget-object v1, p0, Lexm;->b:Lhoq;

    iget-boolean v0, p0, Lexm;->c:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0e0276

    :goto_1
    invoke-virtual {v1, v0}, Lhoq;->b(I)Lhoq;

    .line 36
    iget-object v1, p0, Lexm;->b:Lhoq;

    iget-boolean v0, p0, Lexm;->c:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0e0274

    :goto_2
    new-instance v2, Lexn;

    invoke-direct {v2}, Lexn;-><init>()V

    invoke-virtual {v1, v0, v2}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 45
    iget-object v1, p0, Lexm;->b:Lhoq;

    iget-boolean v0, p0, Lexm;->c:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0e0271

    :goto_3
    new-instance v2, Lexo;

    invoke-direct {v2}, Lexo;-><init>()V

    invoke-virtual {v1, v0, v2}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 51
    iget-object v0, p0, Lexm;->b:Lhoq;

    invoke-virtual {v0}, Lhoq;->a()Lhoj;

    move-result-object v0

    invoke-virtual {v0}, Lhoj;->show()V

    .line 52
    return-void

    .line 31
    :cond_0
    const v0, 0x7f0e015b

    goto :goto_0

    .line 33
    :cond_1
    const v0, 0x7f0e0277

    goto :goto_1

    .line 36
    :cond_2
    const v0, 0x7f0e0272

    goto :goto_2

    .line 45
    :cond_3
    const v0, 0x7f0e0273

    goto :goto_3
.end method
