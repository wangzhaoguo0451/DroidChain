.class public final Lcbg;
.super Lcbc;
.source "UnknownFieldMap.java"


# instance fields
.field private final b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0}, Lcbc;-><init>(Lcom/squareup/wire/WireType;)V

    .line 90
    iput-object p1, p0, Lcbg;->b:Ljava/lang/Long;

    .line 91
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcbg;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    return v0
.end method

.method public final a(ILcom/squareup/wire/WireOutput;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 101
    iget-object v0, p0, Lcbg;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    .line 102
    return-void
.end method
