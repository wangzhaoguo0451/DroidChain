.class final Lbov;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field final a:I

.field final b:[Lbou;


# direct methods
.method private constructor <init>(ILbou;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lbov;->a:I

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Lbou;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object v0, p0, Lbov;->b:[Lbou;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(ILbou;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lbov;-><init>(ILbou;)V

    return-void
.end method

.method private constructor <init>(Lbou;Lbou;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/16 v0, 0x3e

    iput v0, p0, Lbov;->a:I

    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Lbou;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    iput-object v0, p0, Lbov;->b:[Lbou;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lbou;Lbou;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lbov;-><init>(Lbou;Lbou;)V

    return-void
.end method
