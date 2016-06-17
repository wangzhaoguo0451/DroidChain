.class public final Lcbe;
.super Lcbc;
.source "UnknownFieldMap.java"


# instance fields
.field private final b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    invoke-direct {p0, v0}, Lcbc;-><init>(Lcom/squareup/wire/WireType;)V

    .line 140
    iput-object p1, p0, Lcbe;->b:Ljava/lang/Long;

    .line 141
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x8

    return v0
.end method

.method public final a(ILcom/squareup/wire/WireOutput;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 151
    iget-object v0, p0, Lcbe;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    .line 152
    return-void
.end method
