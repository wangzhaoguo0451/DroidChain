.class public final Lfss;
.super Ljava/lang/Object;
.source "BaseFetcher.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    if-nez p1, :cond_0

    .line 417
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 419
    :cond_0
    iput-object p1, p0, Lfss;->a:Ljava/util/List;

    .line 420
    iput-object v0, p0, Lfss;->b:Ljava/lang/Long;

    .line 421
    iput-object v0, p0, Lfss;->c:Ljava/lang/Boolean;

    .line 422
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    if-nez p1, :cond_0

    .line 408
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 410
    :cond_0
    iput-object p1, p0, Lfss;->a:Ljava/util/List;

    .line 411
    iput-object p2, p0, Lfss;->b:Ljava/lang/Long;

    .line 412
    iput-object p3, p0, Lfss;->c:Ljava/lang/Boolean;

    .line 413
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lfss;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
