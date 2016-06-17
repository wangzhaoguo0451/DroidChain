.class final Lebc;
.super Ljava/lang/Object;
.source "FolderMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lebb;


# direct methods
.method constructor <init>(Lebb;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lebc;->a:Lebb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lebc;->a:Lebb;

    invoke-static {v0}, Lebb;->b(Lebb;)Lgdw;

    move-result-object v0

    invoke-virtual {v0}, Lgdw;->a()Lgdx;

    move-result-object v1

    .line 123
    :goto_0
    invoke-virtual {v1}, Lgdx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebj;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, v0, Lebj;->a:Lebl;

    invoke-virtual {v0}, Lebl;->h()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Ledn;->b()V

    .line 127
    return-void
.end method
