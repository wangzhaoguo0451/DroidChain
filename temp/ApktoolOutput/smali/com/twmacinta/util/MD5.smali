.class public Lcom/twmacinta/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    const/16 v0, 0x40

    new-array v0, v0, [B

    const/16 v1, -0x80

    aput-byte v1, v0, v2

    aput-byte v2, v0, v3

    aput-byte v2, v0, v4

    aput-byte v2, v0, v5

    aput-byte v2, v0, v6

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v2, v0, v1

    .line 126
    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v2

    const/16 v1, 0x31

    aput-char v1, v0, v3

    const/16 v1, 0x32

    aput-char v1, v0, v4

    const/16 v1, 0x33

    aput-char v1, v0, v5

    const/16 v1, 0x34

    aput-char v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x61

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x66

    aput-char v2, v0, v1

    return-void
.end method

.method private native Transform_native([I[BII)V
.end method
