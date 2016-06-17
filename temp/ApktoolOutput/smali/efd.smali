.class final Lefd;
.super Ljava/lang/Object;
.source "ResumeDownloadAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lefc;


# direct methods
.method constructor <init>(Lefc;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lefd;->a:Lefc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-static {}, Legx;->f()Leen;

    move-result-object v0

    iget-object v1, p0, Lefd;->a:Lefc;

    invoke-static {v1}, Lefc;->a(Lefc;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Leen;->b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 64
    invoke-static {}, Lefc;->a()V

    .line 65
    return-void
.end method
