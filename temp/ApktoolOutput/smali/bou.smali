.class final Lbou;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field final a:I

.field final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lbou;->a:I

    .line 152
    iput p2, p0, Lbou;->b:I

    .line 153
    return-void
.end method

.method synthetic constructor <init>(IIB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lbou;-><init>(II)V

    return-void
.end method
