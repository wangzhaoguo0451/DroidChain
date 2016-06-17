.class public final Lgdv;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ldxa;


# direct methods
.method public constructor <init>(Ldxa;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lgdv;->a:Ldxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lgdv;->a:Ldxa;

    invoke-virtual {v0}, Ldxa;->b()V

    .line 294
    return-void
.end method
