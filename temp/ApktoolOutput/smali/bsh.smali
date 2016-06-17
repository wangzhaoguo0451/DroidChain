.class public final Lbsh;
.super Ljava/lang/Object;
.source "FinderPatternInfo.java"


# instance fields
.field final a:Lbsg;

.field final b:Lbsg;

.field final c:Lbsg;


# direct methods
.method public constructor <init>([Lbsg;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lbsh;->a:Lbsg;

    .line 33
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lbsh;->b:Lbsg;

    .line 34
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lbsh;->c:Lbsg;

    .line 35
    return-void
.end method
