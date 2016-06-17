.class final Lebn;
.super Ljava/lang/Object;
.source "GameFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lebl;


# direct methods
.method constructor <init>(Lebl;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lebn;->a:Lebl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 310
    :try_start_0
    iget-object v0, p0, Lebn;->a:Lebl;

    iget-object v0, v0, Lebl;->c:Leba;

    invoke-virtual {v0}, Leba;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    goto :goto_0
.end method
