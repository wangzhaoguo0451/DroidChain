.class final Lexc;
.super Ljava/lang/Object;
.source "UpgradableAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lexg;


# direct methods
.method constructor <init>(Lexg;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lexc;->a:Lexg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lexc;->a:Lexg;

    invoke-static {}, Lewx;->f()I

    move-result v1

    invoke-interface {v0, v1}, Lexg;->a(I)V

    .line 279
    return-void
.end method
