.class public final Lbxk;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/net/URL;

.field c:Ljava/lang/String;

.field public d:Lbxg;

.field e:Lbxl;

.field f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "GET"

    iput-object v0, p0, Lbxk;->c:Ljava/lang/String;

    .line 135
    new-instance v0, Lbxg;

    invoke-direct {v0}, Lbxg;-><init>()V

    iput-object v0, p0, Lbxk;->d:Lbxg;

    .line 136
    return-void
.end method

.method private constructor <init>(Lbxj;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget-object v0, p1, Lbxj;->a:Ljava/lang/String;

    iput-object v0, p0, Lbxk;->a:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lbxj;->f:Ljava/net/URL;

    iput-object v0, p0, Lbxk;->b:Ljava/net/URL;

    .line 141
    iget-object v0, p1, Lbxj;->b:Ljava/lang/String;

    iput-object v0, p0, Lbxk;->c:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lbxj;->d:Lbxl;

    iput-object v0, p0, Lbxk;->e:Lbxl;

    .line 143
    iget-object v0, p1, Lbxj;->e:Ljava/lang/Object;

    iput-object v0, p0, Lbxk;->f:Ljava/lang/Object;

    .line 144
    iget-object v0, p1, Lbxj;->c:Lbxf;

    invoke-virtual {v0}, Lbxf;->a()Lbxg;

    move-result-object v0

    iput-object v0, p0, Lbxk;->d:Lbxg;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lbxj;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lbxk;-><init>(Lbxj;)V

    return-void
.end method


# virtual methods
.method public final a()Lbxj;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lbxk;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    new-instance v0, Lbxj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbxj;-><init>(Lbxk;B)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lbxk;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lbxk;->d:Lbxg;

    invoke-virtual {v0, p1}, Lbxg;->a(Ljava/lang/String;)Lbxg;

    .line 181
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lbxl;)Lbxk;
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    invoke-static {p1}, Ld;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    sget-object v0, Lbya;->a:[B

    invoke-static {v2, v3, v2, v3}, Lbya;->a(JJ)V

    new-instance p2, Lbxm;

    invoke-direct {p2, v0}, Lbxm;-><init>([B)V

    .line 239
    :cond_1
    iput-object p1, p0, Lbxk;->c:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lbxk;->e:Lbxl;

    .line 241
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lbxk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lbxk;->d:Lbxg;

    invoke-virtual {v0, p1, p2}, Lbxg;->c(Ljava/lang/String;Ljava/lang/String;)Lbxg;

    .line 167
    return-object p0
.end method

.method public final a(Ljava/net/URL;)Lbxk;
    .locals 1
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lbxk;->b:Ljava/net/URL;

    .line 157
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbxk;->a:Ljava/lang/String;

    .line 158
    return-object p0
.end method
