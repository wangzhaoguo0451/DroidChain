.class final Lfds;
.super Ljava/lang/Object;
.source "CommunityNominateGroupAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfdr;


# direct methods
.method constructor <init>(Lfdr;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lfds;->a:Lfdr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lfds;->a:Lfdr;

    iget-object v0, v0, Lfdr;->a:Lfdq;

    invoke-static {v0}, Lfdq;->e(Lfdq;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lfds;->a:Lfdr;

    iget-object v0, v0, Lfdr;->a:Lfdq;

    invoke-static {v0}, Lfdq;->e(Lfdq;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 90
    iget-object v0, p0, Lfds;->a:Lfdr;

    iget-object v0, v0, Lfdr;->a:Lfdq;

    invoke-static {v0}, Lfdq;->f(Lfdq;)Landroid/app/ProgressDialog;

    .line 92
    :cond_0
    return-void
.end method
