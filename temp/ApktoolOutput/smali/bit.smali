.class final Lbit;
.super Ljava/lang/Object;


# static fields
.field static final a:[Lbat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lbat;

    const/4 v1, 0x0

    new-instance v2, Lbiu;

    const-string v3, "0\u0082\u0005a0\u0082\u0003K\u0002\u0006\u0001D\u009e\u0091\u0096\u00d30\u000b\u0006\t*\u0086H\u0086\u00f7"

    invoke-static {v3}, Lbat;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lbiu;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lbiv;

    const-string v3, "0\u0082\u0003\u00bf0\u0082\u0002\u00a7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00da\u0098\u00c3\u00d9\u0015s\u00d3\u00ef0"

    invoke-static {v3}, Lbat;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lbiv;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lbit;->a:[Lbat;

    return-void
.end method
