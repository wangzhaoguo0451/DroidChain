.class final Ldtm;
.super Ljava/lang/Object;
.source "JupiterPublisher.java"

# interfaces
.implements Ldtr;


# instance fields
.field private synthetic a:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Ldtm;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Ldtm;->a:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 62
    return-void
.end method
