.class public final Lcom/squareup/wire/WireOutput;
.super Ljava/lang/Object;
.source "WireOutput.java"


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private position:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/squareup/wire/WireOutput;->buffer:[B

    .line 158
    iput p2, p0, Lcom/squareup/wire/WireOutput;->position:I

    .line 159
    add-int v0, p2, p3

    iput v0, p0, Lcom/squareup/wire/WireOutput;->limit:I

    .line 160
    return-void
.end method

.method public static int32Size(I)I
    .locals 1
    .parameter

    .prologue
    .line 63
    if-ltz p0, :cond_0

    .line 64
    invoke-static {p0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static int64Size(J)I
    .locals 2
    .parameter

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 77
    invoke-static {p0, p1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static makeTag(ILcom/squareup/wire/WireType;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 149
    shl-int/lit8 v0, p0, 0x3

    invoke-virtual {p1}, Lcom/squareup/wire/WireType;->value()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static messageHeaderSize(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p0, v0}, Lcom/squareup/wire/WireOutput;->tagSize(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-static {p1}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static messageSize(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p0, v0}, Lcom/squareup/wire/WireOutput;->tagSize(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-static {p1}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method static newInstance([B)Lcom/squareup/wire/WireOutput;
    .locals 2
    .parameter

    .prologue
    .line 169
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/squareup/wire/WireOutput;->newInstance([BII)Lcom/squareup/wire/WireOutput;

    move-result-object v0

    return-object v0
.end method

.method static newInstance([BII)Lcom/squareup/wire/WireOutput;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    new-instance v0, Lcom/squareup/wire/WireOutput;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/wire/WireOutput;-><init>([BII)V

    return-object v0
.end method

.method public static tagSize(ILcom/squareup/wire/WireType;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v0

    return v0
.end method

.method public static varint32Size(I)I
    .locals 1
    .parameter

    .prologue
    .line 193
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    .line 194
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 195
    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 196
    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 197
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static varint64Size(J)I
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 202
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 203
    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 204
    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 205
    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 206
    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 207
    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 208
    :cond_5
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    .line 209
    :cond_6
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    .line 210
    :cond_7
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    .line 211
    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method static varintTagSize(I)I
    .locals 1
    .parameter

    .prologue
    .line 184
    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-static {p0, v0}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    return v0
.end method

.method public static writeMessageHeader(I[BII)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    .line 142
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p0, v0, p1, p2}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;[BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 143
    int-to-long v2, p3

    invoke-static {v2, v3, p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint(J[BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    sub-int/2addr v0, p2

    return v0
.end method

.method public static writeTag(ILcom/squareup/wire/WireType;[BI)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lcom/squareup/wire/WireOutput;->writeVarint(J[BI)I

    move-result v0

    return v0
.end method

.method public static writeVarint(J[BI)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    move v0, p3

    .line 113
    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 114
    add-int/lit8 v1, v0, 0x1

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 115
    sub-int v0, v1, p3

    return v0

    .line 117
    :cond_0
    add-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 118
    const/4 v0, 0x7

    ushr-long/2addr p0, v0

    move v0, v1

    goto :goto_0
.end method

.method static zigZag32(I)I
    .locals 2
    .parameter

    .prologue
    .line 325
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method static zigZag64(J)J
    .locals 4
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final writeFixed32(I)V
    .locals 1
    .parameter

    .prologue
    .line 292
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 293
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 294
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 295
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 297
    return-void
.end method

.method public final writeFixed64(J)V
    .locals 3
    .parameter

    .prologue
    .line 302
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 303
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 304
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 305
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 306
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 307
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 308
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 309
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 311
    return-void
.end method

.method final writeRawByte(B)V
    .locals 3
    .parameter

    .prologue
    .line 216
    iget v0, p0, Lcom/squareup/wire/WireOutput;->position:I

    iget v1, p0, Lcom/squareup/wire/WireOutput;->limit:I

    if-ne v0, v1, :cond_0

    .line 218
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out of space: position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/WireOutput;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/WireOutput;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/WireOutput;->buffer:[B

    iget v1, p0, Lcom/squareup/wire/WireOutput;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/wire/WireOutput;->position:I

    aput-byte p1, v0, v1

    .line 221
    return-void
.end method

.method final writeRawByte(I)V
    .locals 1
    .parameter

    .prologue
    .line 225
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(B)V

    .line 226
    return-void
.end method

.method public final writeRawBytes([B)V
    .locals 2
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeRawBytes([BII)V

    .line 231
    return-void
.end method

.method final writeRawBytes([BII)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    iget v0, p0, Lcom/squareup/wire/WireOutput;->limit:I

    iget v1, p0, Lcom/squareup/wire/WireOutput;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 237
    iget-object v0, p0, Lcom/squareup/wire/WireOutput;->buffer:[B

    iget v1, p0, Lcom/squareup/wire/WireOutput;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget v0, p0, Lcom/squareup/wire/WireOutput;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/squareup/wire/WireOutput;->position:I

    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out of space: position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/WireOutput;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/WireOutput;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final writeSignedVarint32(I)V
    .locals 2
    .parameter

    .prologue
    .line 252
    if-ltz p1, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_0
.end method

.method public final writeTag(ILcom/squareup/wire/WireType;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-static {p1, p2}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 248
    return-void
.end method

.method public final writeVarint32(I)V
    .locals 1
    .parameter

    .prologue
    .line 266
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0, p1}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 268
    return-void

    .line 270
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 271
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final writeVarint64(J)V
    .locals 5
    .parameter

    .prologue
    .line 279
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 280
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 281
    return-void

    .line 283
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 284
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method
