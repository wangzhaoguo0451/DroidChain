.class final Lbxa;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbwz;


# direct methods
.method constructor <init>(Lbwz;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lbxa;->a:Lbwz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lbxa;->a:Lbwz;

    invoke-static {v0}, Lbwz;->a(Lbwz;)V

    .line 98
    return-void
.end method
