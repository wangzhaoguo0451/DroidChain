.class final Ldyc;
.super Ljava/lang/Object;
.source "BaseFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ldyb;


# direct methods
.method constructor <init>(Ldyb;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Ldyc;->b:Ldyb;

    iput-object p2, p0, Ldyc;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Ldyc;->b:Ldyb;

    iget-object v0, v0, Ldyb;->a:Ldyg;

    new-instance v1, Ldyh;

    iget-object v2, p0, Ldyc;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ldyh;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ldyg;->a(Ldyh;)V

    .line 130
    return-void
.end method
