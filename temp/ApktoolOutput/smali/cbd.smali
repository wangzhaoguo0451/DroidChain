.class public final Lcbd;
.super Lcbc;
.source "UnknownFieldMap.java"


# instance fields
.field private final b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0}, Lcbc;-><init>(Lcom/squareup/wire/WireType;)V

    .line 115
    iput-object p1, p0, Lcbd;->b:Ljava/lang/Integer;

    .line 116
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x4

    return v0
.end method

.method public final a(ILcom/squareup/wire/WireOutput;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 125
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 126
    iget-object v0, p0, Lcbd;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    .line 127
    return-void
.end method
