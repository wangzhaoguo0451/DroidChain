.class final Laxk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Laxj;


# direct methods
.method constructor <init>(Laxj;)V
    .locals 0

    iput-object p1, p0, Laxk;->a:Laxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Laxk;->a:Laxj;

    iget-object v0, v1, Lawp;->d:Laws;

    invoke-virtual {v0}, Laws;->b()Lbkr;

    move-result-object v0

    iget-object v0, v0, Lbkr;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Laxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Laxj;->d()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
