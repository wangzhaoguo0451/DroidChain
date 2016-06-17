.class public final Lcbf;
.super Lcbc;
.source "UnknownFieldMap.java"


# instance fields
.field private final b:Lcom/squareup/wire/ByteString;


# direct methods
.method public constructor <init>(Lcom/squareup/wire/ByteString;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0}, Lcbc;-><init>(Lcom/squareup/wire/WireType;)V

    .line 165
    iput-object p1, p0, Lcbf;->b:Lcom/squareup/wire/ByteString;

    .line 166
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcbf;->b:Lcom/squareup/wire/ByteString;

    invoke-virtual {v0}, Lcom/squareup/wire/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    iget-object v1, p0, Lcbf;->b:Lcom/squareup/wire/ByteString;

    invoke-virtual {v1}, Lcom/squareup/wire/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(ILcom/squareup/wire/WireOutput;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 175
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 176
    iget-object v0, p0, Lcbf;->b:Lcom/squareup/wire/ByteString;

    invoke-virtual {v0}, Lcom/squareup/wire/ByteString;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 177
    iget-object v0, p0, Lcbf;->b:Lcom/squareup/wire/ByteString;

    invoke-virtual {v0}, Lcom/squareup/wire/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    .line 178
    return-void
.end method
