.class public Lcom/unionpay/pboctransaction/sdapdu/NativeSDWriter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcfu;->a()V

    return-void
.end method


# virtual methods
.method public native closeSD()Z
.end method

.method public native openSD(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public native writeApdu(Ljava/lang/String;)Ljava/lang/String;
.end method
