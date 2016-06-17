.class final Lfqe;
.super Landroid/os/FileObserver;
.source "ExternalDatabaseHelper.java"


# instance fields
.field private synthetic a:Lfqc;


# direct methods
.method constructor <init>(Lfqc;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lfqe;->a:Lfqc;

    const/16 v0, 0x18

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 87
    const-string v0, "ExternalDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    and-int/lit8 v0, p1, 0x18

    if-eqz v0, :cond_0

    const-string v0, ".android_secure"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lfqe;->a:Lfqc;

    invoke-virtual {v0}, Lfqc;->close()V

    .line 91
    :cond_0
    return-void
.end method
