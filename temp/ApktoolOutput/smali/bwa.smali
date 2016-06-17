.class final Lbwa;
.super Ljava/lang/Object;
.source "AidTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbvz;


# direct methods
.method constructor <init>(Lbvz;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbwa;->a:Lbvz;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 99
    move v0, v1

    :goto_0
    if-lez v0, :cond_0

    .line 105
    return-void

    .line 100
    :cond_0
    iget-object v2, p0, Lbwa;->a:Lbvz;

    invoke-virtual {v2, v1}, Lbvz;->a(I)Ljava/io/File;

    move-result-object v2

    .line 102
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method
