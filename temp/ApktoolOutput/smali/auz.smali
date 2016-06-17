.class public Lauz;
.super Ljava/lang/Object;
.source "TiffUtil.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lauz;

    sput-object v0, Lauz;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    packed-switch p0, :pswitch_data_0

    .line 47
    :pswitch_0
    sget-object v1, Lauz;->a:Ljava/lang/Class;

    const-string v2, "Unsupported orientation"

    invoke-static {v1, v2}, Lakf;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 48
    :goto_0
    :pswitch_1
    return v0

    .line 41
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 43
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 45
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/io/InputStream;I)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 59
    new-instance v5, Lava;

    invoke-direct {v5, v2}, Lava;-><init>(B)V

    .line 60
    if-gt p1, v6, :cond_2

    move v0, v2

    .line 65
    :cond_0
    :goto_0
    iget v3, v5, Lava;->c:I

    add-int/lit8 v3, v3, -0x8

    .line 66
    if-eqz v0, :cond_1

    if-le v3, v0, :cond_6

    .line 76
    :cond_1
    :goto_1
    return v2

    .line 60
    :cond_2
    invoke-static {p0, v11, v2}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    iput v0, v5, Lava;->b:I

    add-int/lit8 v3, p1, -0x4

    iget v0, v5, Lava;->b:I

    const v4, 0x49492a00

    if-eq v0, v4, :cond_3

    iget v0, v5, Lava;->b:I

    const v4, 0x4d4d002a

    if-eq v0, v4, :cond_3

    sget-object v0, Lauz;->a:Ljava/lang/Class;

    const-string v3, "Invalid TIFF header"

    invoke-static {v0, v3}, Lakf;->d(Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, v5, Lava;->b:I

    const v4, 0x49492a00

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, v5, Lava;->a:Z

    iget-boolean v0, v5, Lava;->a:Z

    invoke-static {p0, v11, v0}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    iput v0, v5, Lava;->c:I

    add-int/lit8 v0, v3, -0x4

    iget v3, v5, Lava;->c:I

    if-lt v3, v6, :cond_4

    iget v3, v5, Lava;->c:I

    add-int/lit8 v3, v3, -0x8

    if-le v3, v0, :cond_0

    :cond_4
    sget-object v0, Lauz;->a:Ljava/lang/Class;

    const-string v3, "Invalid offset"

    invoke-static {v0, v3}, Lakf;->d(Ljava/lang/Class;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    .line 69
    :cond_6
    int-to-long v6, v3

    invoke-virtual {p0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 70
    sub-int v3, v0, v3

    .line 73
    iget-boolean v6, v5, Lava;->a:Z

    const/16 v0, 0xe

    if-lt v3, v0, :cond_8

    invoke-static {p0, v10, v6}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    add-int/lit8 v3, v3, -0x2

    move v4, v3

    :goto_3
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_8

    const/16 v0, 0xc

    if-lt v4, v0, :cond_8

    invoke-static {p0, v10, v6}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v7

    add-int/lit8 v0, v4, -0x2

    const/16 v4, 0x112

    if-ne v7, v4, :cond_7

    .line 76
    :goto_4
    iget-boolean v3, v5, Lava;->a:Z

    const/16 v4, 0xa

    if-lt v0, v4, :cond_1

    invoke-static {p0, v10, v3}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-static {p0, v11, v3}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-static {p0, v10, v3}, Ld;->a(Ljava/io/InputStream;IZ)I

    move-result v2

    invoke-static {p0, v10, v3}, Ld;->a(Ljava/io/InputStream;IZ)I

    goto/16 :goto_1

    .line 73
    :cond_7
    const-wide/16 v8, 0xa

    invoke-virtual {p0, v8, v9}, Ljava/io/InputStream;->skip(J)J

    add-int/lit8 v0, v0, -0xa

    move v4, v0

    move v0, v3

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_4
.end method
