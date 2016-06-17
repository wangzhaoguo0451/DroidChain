.class public final Lgcl;
.super Ljava/lang/Object;
.source "SubscribePublisher.java"

# interfaces
.implements Ldtr;


# instance fields
.field private synthetic a:[Z


# direct methods
.method public constructor <init>([Z)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lgcl;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lgcl;->a:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 86
    return-void
.end method
