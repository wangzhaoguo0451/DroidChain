.class final Lexd;
.super Ljava/lang/Object;
.source "UpgradableAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    iput-boolean p1, p0, Lexd;->a:Z

    iput-boolean p2, p0, Lexd;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lexd;->a:Z

    iget-boolean v1, p0, Lexd;->b:Z

    invoke-static {v0, v1}, Lewx;->b(ZZ)Z

    .line 299
    return-void
.end method
