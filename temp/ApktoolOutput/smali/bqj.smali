.class public abstract Lbqj;
.super Ljava/lang/Object;
.source "AbstractExpandedDecoder.java"


# instance fields
.field final a:Lbnz;

.field final b:Lbqr;


# direct methods
.method constructor <init>(Lbnz;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lbqj;->a:Lbnz;

    .line 44
    new-instance v0, Lbqr;

    invoke-direct {v0, p1}, Lbqr;-><init>(Lbnz;)V

    iput-object v0, p0, Lbqj;->b:Lbqr;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
