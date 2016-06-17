.class final Lfnd;
.super Ljava/lang/Object;
.source "MobileFlowController.java"

# interfaces
.implements Lfce;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfce",
        "<",
        "Lfne;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lfna;


# direct methods
.method constructor <init>(Lfna;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lfnd;->a:Lfna;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    check-cast p1, Lfne;

    iget-object v0, p0, Lfnd;->a:Lfna;

    iget v0, v0, Lfna;->b:I

    invoke-interface {p1, v0}, Lfne;->a(I)V

    return-void
.end method
