.class final Lbql;
.super Ljava/lang/Object;
.source "BlockParsedResult.java"


# instance fields
.field final a:Lbqn;

.field final b:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbql;-><init>(Lbqn;Z)V

    .line 40
    return-void
.end method

.method constructor <init>(Lbqn;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p2, p0, Lbql;->b:Z

    .line 44
    iput-object p1, p0, Lbql;->a:Lbqn;

    .line 45
    return-void
.end method
