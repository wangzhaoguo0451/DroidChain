.class final Lfcs;
.super Ljava/lang/Object;
.source "CommunityDeleteAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lfcq;


# direct methods
.method constructor <init>(Lfcq;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lfcs;->a:Lfcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lfcs;->a:Lfcq;

    invoke-static {v0}, Lfcq;->a(Lfcq;)V

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfct;

    iget-object v2, p0, Lfcs;->a:Lfcq;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lfct;-><init>(Lfcq;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    return-void
.end method
